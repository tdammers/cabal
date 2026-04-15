import Test.Cabal.Prelude
-- Test build-tool-depends between two packages
main = cabalTest $ do
    workDir <- testWorkDir <$> getTestEnv
    -- liftIO $ writeFile (workDir </> "cabal.project") "packages: client\noptional-packages: pre-proc-1, pre-proc-2\n"
    -- cabal "v2-build" ["client", "-c", "any.pre-proc==1.0.*"]
    -- liftIO $ writeFile (workDir </> "cabal.project") "packages: client\noptional-packages: pre-proc-2\n"
    cabal "v2-build" ["client", "-c", "any.pre-proc==2.0.*"]
