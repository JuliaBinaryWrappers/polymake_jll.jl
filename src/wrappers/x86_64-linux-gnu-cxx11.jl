# Autogenerated wrapper script for polymake_jll for x86_64-linux-gnu-cxx11
export libpolymake, libpolymake_apps_rt, polymake, polymake_config

using CompilerSupportLibraries_jll
using FLINT_jll
using GMP_jll
using MPFR_jll
using PPL_jll
using Perl_jll
using bliss_jll
using boost_jll
using cddlib_jll
using lrslib_jll
using normaliz_jll
JLLWrappers.@generate_wrapper_header("polymake")
JLLWrappers.@declare_library_product(libpolymake, "libpolymake.so.4.2")
JLLWrappers.@declare_library_product(libpolymake_apps_rt, "libpolymake-apps-rt.so.4.2")
JLLWrappers.@declare_executable_product(polymake)
JLLWrappers.@declare_executable_product(polymake_config)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, FLINT_jll, GMP_jll, MPFR_jll, PPL_jll, Perl_jll, bliss_jll, boost_jll, cddlib_jll, lrslib_jll, normaliz_jll)
    JLLWrappers.@init_library_product(
        libpolymake,
        "lib/libpolymake.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpolymake_apps_rt,
        "lib/libpolymake-apps-rt.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        polymake,
        "bin/polymake",
    )

    JLLWrappers.@init_executable_product(
        polymake_config,
        "bin/polymake-config",
    )

    JLLWrappers.@generate_init_footer()
    
   mutable_artifacts_toml = joinpath(dirname(@__DIR__), "MutableArtifacts.toml")
   polymake_tree = "polymake_tree"
   polymake_tree_hash = artifact_hash(polymake_tree, mutable_artifacts_toml)

   # create a directory tree for polymake with links to dependencies
   # looking similiar to the tree in the build environment
   # for compiling wrappers at run-time
   polymake_tree_hash = create_artifact() do art_dir
      mkpath(joinpath(art_dir,"deps"))
      for dep in [FLINT_jll, GMP_jll, MPFR_jll, PPL_jll, Perl_jll, bliss_jll, boost_jll, cddlib_jll, lrslib_jll, normaliz_jll]
         symlink(dep.artifact_dir, joinpath(art_dir,"deps","$dep"))
      end
      for dir in readdir(polymake_jll.artifact_dir)
         symlink(joinpath(polymake_jll.artifact_dir,dir), joinpath(art_dir,dir))
      end
   end
   bind_artifact!(mutable_artifacts_toml,
      polymake_tree,
      polymake_tree_hash;
      force=true
   )

   # Point polymake to our custom tree
   ENV["POLYMAKE_DEPS_TREE"] = artifact_path(polymake_tree_hash)

end  # __init__()
