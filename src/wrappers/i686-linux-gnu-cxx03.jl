# Autogenerated wrapper script for polymake_jll for i686-linux-gnu-cxx03
export libpolymake, libpolymake_apps_rt, polymake, polymake_config

using CompilerSupportLibraries_jll
using GMP_jll
using MPFR_jll
using FLINT_jll
using MongoC_jll
using PPL_jll
using Perl_jll
using SCIP_jll
using bliss_jll
using boost_jll
using cddlib_jll
using lrslib_jll
using normaliz_jll
JLLWrappers.@generate_wrapper_header("polymake")
JLLWrappers.@declare_library_product(libpolymake, "libpolymake.so.4.12")
JLLWrappers.@declare_library_product(libpolymake_apps_rt, "libpolymake-apps-rt.so.4.12")
JLLWrappers.@declare_executable_product(polymake)
JLLWrappers.@declare_executable_product(polymake_config)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, GMP_jll, MPFR_jll, FLINT_jll, MongoC_jll, PPL_jll, Perl_jll, SCIP_jll, bliss_jll, boost_jll, cddlib_jll, lrslib_jll, normaliz_jll)
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
end  # __init__()
