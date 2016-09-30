package JT;

sub error_handler
{
	print "@_\n";
	print "$#_\n";
}

use constant RESULT => {
        JT::PASS            => 'PASS',              # 0
        JT::FAIL            => 'FAIL',              # 1
        JT::ABORT           => 'ABORT',             # 2
        JT::NOTINUSE        => 'NOTINUSE',          # 3
        JT::UNSUPPORTED     => 'UNSUPPORTED',       # 4 
        JT::UNTESTED        => 'UNTESTED',          # 5
        JT::UNINITIATED     => 'UNINITIATED',       # 6
        JT::UNKNOWN_ERROR   => 'UNKNOWN_ERROR',     # 7
        JT::QUIT            => 'QUIT',              # 8
        JT::MANY_FAILURES   => 'MANY_FAILURES',     # 9
        JT::FALSE_PASS      => 'FALSE_PASS',        # 10
        JT::CORE_PASS       => 'CORE_PASS',         # 12
        JT::TC_RERUN_PASS   => 'TC_RERUN_PASS',     # 13
        JT::GRES_ERR_PASS   => 'GRES_ERR_PASS',     # 14
        JT::EXPECT_ERRORS   => 'EXPECT_ERRORS',     # 17
        JT::CONNECT_LOST    => 'CONNECT_LOST',      # 18
        JT::CRASH           => 'CRASH',             # 19
        JT::PARAMS_FAIL     => 'PARAMS_FAIL',       # 21
        JT::CONNECT_FAIL    => 'CONNECT_FAIL',      # 22
        JT::LINK_FAIL       => 'LINK_FAIL',         # 23
        JT::IGP_FAIL        => 'IGP_FAIL',          # 24
        JT::SYNTAX_ERROR    => 'SYNTAX_ERROR',      # 25
        JT::VJ_FAIL         => 'VJ_FAIL',           # 27 # JT-VJ
        JT::UCODE_FAIL      => 'UCODE_FAIL',        # 28
        JT::TEST_TIMEOUT    => 'TEST_TIMEOUT',      # 31
        JT::UNSUP_VERSION   => 'UNSUP_VERSION',     # 41
        JT::UNSUP_TESTBED   => 'UNSUP_TESTBED',     # 42
        JT::UNSUP_HW        => 'UNSUP_HW',          # 43
        JT::FPC_PIC_ERROR   => 'FPC_PIC_ERROR',     # 45
        JT::BAD_PROMPT      => 'BAD_PROMPT',         # 46
		JT::INFRA_FAIL      => 'INFRA_FAIL',
		JT::GCOV_ABORT      => 'GCOV_ABORT',
		JT::SIG_ABORT       => 'SIG_ABORT',
};

print JT::RESULT->{JT::PASS};
1;
