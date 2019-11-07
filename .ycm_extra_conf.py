import os
import ycm_core

from clang_helpers import PrepareClangFlags

def DirectoryOfThisScript():
    return os.path.dirname(os.path.abspath(__file__))

# This is the single most important line in this script. 
# Everything else is just nice to have but
# not strictly necessary.
compilation_database_folder = DirectoryOfThisScript()

# This provides a safe fall-back if no compilation commands are available.
#You could also add a
# includes relative to your project directory, for example.
flags = [
    '-Wall',
    '-std=c++11',
    '-stdlib=libc++',
    '-x',
    'c++',
    '-I',
    '.',
    '-isystem', '/usr/local/include',
    '-isystem', '/usr/include',
    '-I.',
]
def GetRosIncludeFlags():
    includes = GetRosIncludePaths()
    flags = []
    for include in includes:
        flags.append('-isystem')
        flags.append(include)
    return flags

# These are the compilation flags that will be used in case there's no
# compilation database set (by default, one is not set).
# CHANGE THIS LIST OF FLAGS. YES, THIS IS THE DROID YOU HAVE BEEN LOOKING FOR.
# You can get CMake to generate the compilation_commands.json file for you by
# adding:
#   set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
# to your CMakeLists.txt file or by once entering
#   catkin config --cmake-args '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
# in your shell.

default_flags_mine = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-Wno-long-long',
    '-Wno-variadic-macros',
    '-fexceptions',
    '-DNDEBUG',
    '-std=c++11',
    '-x',
    'c++',
    '-I',
    '.',
    '-DQT_CORE_LIB',
    '-DQT_GUI_LIB',
    '-DQT_NETWORK_LIB',
    '-DQT_QML_LIB',
    '-DQT_QUICK_LIB',
    '-DQT_SQL_LIB',
    '-DQT_WIDGETS_LIB',
    '-DQT_XML_LIB',

    '-I', '/usr/lib/qt/mkspecs/linux-clang',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtConcurrent',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtCore',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtDBus',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtGui',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtHelp',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtMultimedia',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtMultimediaWidgets',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtNetwork',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtOpenGL',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtPlatformSupport',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtPositioning',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtScript',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtScriptTools',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtSql',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtSvg',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtTest',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtUiTools',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtV8',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtWebKit',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtWebKitWidgets',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtWidgets',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtXml',
    '-I', '/usr/include/x86_64-linux-gnu/qt5/QtXmlPatterns',
]
def GetRosIncludePaths():
    """Return a list of potential include directories

    The directories are looked for in $ROS_WORKSPACE.
    """
    try:
        from rospkg import RosPack
    except ImportError:
        return []
    rospack = RosPack()
    includes = []
    includes.append(os.path.expandvars('$ROS_WORKSPACE') + '/devel/include')
    for p in rospack.list():
        if os.path.exists(rospack.get_path(p) + '/include'):
            includes.append(rospack.get_path(p) + '/include')
    for distribution in os.listdir('/opt/ros'):
        includes.append('/opt/ros/' + distribution + '/include')
    return includes


flags_mine = default_flags_mine + GetRosIncludeFlags()

if compilation_database_folder:
    database = ycm_core.CompilationDatabase(compilation_database_folder)
else:
    database = None

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.m', '.mm' ]

def MakeRelativePathsInFlagsAbsolute( flags, working_directory ):
  if not working_directory:
    return list( flags )
  new_flags = []
  make_next_absolute = False
  path_flags = [ '-isystem', '-I', '-iquote', '--sysroot=' ]
  for flag in flags:
    new_flag = flag

    if make_next_absolute:
      make_next_absolute = False
      if not flag.startswith( '/' ):
        new_flag = os.path.join( working_directory, flag )

    for path_flag in path_flags:
      if flag == path_flag:
        make_next_absolute = True
        break

      if flag.startswith( path_flag ):
        path = flag[ len( path_flag ): ]
        new_flag = path_flag + os.path.join( working_directory, path )
        break

    if new_flag:
      new_flags.append( new_flag )
  return new_flags


def IsHeaderFile( filename ):
  extension = os.path.splitext( filename )[ 1 ]
  return extension in [ '.h', '.hxx', '.hpp', '.hh' ]


def GetCompilationInfoForFile( filename ):
  # The compilation_commands.json file generated by CMake does not have entries
  # for header files. So we do our best by asking the db for flags for a
  # corresponding source file, if any. If one exists, the flags for that file
  # should be good enough.
  if IsHeaderFile( filename ):
    basename = os.path.splitext( filename )[ 0 ]
    for extension in SOURCE_EXTENSIONS:
      replacement_file = basename + extension
      if os.path.exists( replacement_file ):
        compilation_info = database.GetCompilationInfoForFile(
          replacement_file )
        if compilation_info.compiler_flags_:
          return compilation_info
    return None
  return database.GetCompilationInfoForFile( filename )


def FlagsForFile( filename, **kwargs ):
  if database:
    # Bear in mind that compilation_info.compiler_flags_ does NOT return a
    # python list, but a "list-like" StringVec object
    compilation_info = GetCompilationInfoForFile( filename )
    if not compilation_info:
      return None

    final_flags = MakeRelativePathsInFlagsAbsolute(
      compilation_info.compiler_flags_,
      compilation_info.compiler_working_dir_ )

  else:
    relative_to = DirectoryOfThisScript()
    final_flags = MakeRelativePathsInFlagsAbsolute( flags, relative_to )
    final_flags = final_flags + flags_mine
  return {
    'flags': final_flags,
    'do_cache': True
  }



 

