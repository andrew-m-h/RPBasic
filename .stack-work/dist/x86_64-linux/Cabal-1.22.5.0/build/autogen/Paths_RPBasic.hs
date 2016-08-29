module Paths_RPBasic (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/andrew/Documents/git/RPBasic/.stack-work/install/x86_64-linux/lts-6.14/7.10.3/bin"
libdir     = "/home/andrew/Documents/git/RPBasic/.stack-work/install/x86_64-linux/lts-6.14/7.10.3/lib/x86_64-linux-ghc-7.10.3/RPBasic-0.1.0.0-7OqPG9JSzJFI2O4FuuQ2cE"
datadir    = "/home/andrew/Documents/git/RPBasic/.stack-work/install/x86_64-linux/lts-6.14/7.10.3/share/x86_64-linux-ghc-7.10.3/RPBasic-0.1.0.0"
libexecdir = "/home/andrew/Documents/git/RPBasic/.stack-work/install/x86_64-linux/lts-6.14/7.10.3/libexec"
sysconfdir = "/home/andrew/Documents/git/RPBasic/.stack-work/install/x86_64-linux/lts-6.14/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "RPBasic_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "RPBasic_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "RPBasic_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "RPBasic_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "RPBasic_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
