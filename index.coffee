#################################################
# CHANGE THE IPV6 TO WHAT YOU'RE TRYING TO PING #
#################################################

ipv6 = "fc49:8be3:42b7:4f0c:4e68:563f:dac6:e259"

###########################
# CHANGE STYLE IF DESIRED #
###########################

style: """
    top                100px
    left               10px
    background         rgba(#000, .5)
    color              #fff
    padding            10px
    border-radius      5px
    font-family        Helvetica Neue
    font-size          12px
    width              300px

    .cjdns
        font-size      11px
        padding        0 0 5px

        &:after
            content    '(#{ipv6})'
            font-size: 10px
"""

#######################################
# DO NOT EDIT BELOW (OR YOU KNOW, DO) #
#######################################

command: "ping6 -c 1 "+ipv6+" | grep / | cut -c 34-38"
refreshFrequence: 5000

render: (lag) -> """
<div class="cjdns">
	CJDNS Route Time
</div>
<div class="ms">
	#{lag} ms
</div>
"""
