local json = require("json")
local utils = require(".utils")
local constants = require("constants")

-- TODO: save variable when adding new projects dynamically
PROJECTS = {
    {
        process = constants.SATURN_PID,
        tokenProcess = constants.SATURN_TOKEN_PID,
        id = "SATP",
        amountStaked = 0,
        name = "Saturn",
        description = "A test project for you to stake tAoETH and earn SATP to experience the the power of permissionless ecosystem funding",
        logo = "https://wkypibie7ccprx5ujbbqddvhyotazjdchydxq6w4pd6j7hik5ipa.arweave.net/srD0BQT4hPjftEhDAY6nw6YMpGI-B3h63Hj8n50K6h4",
        ticker = "SATP",
        cooldownPeriod = 60,  -- 60 seconds
        aoethRewardRate = 10, -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Alice Johnson",
                designation = "CEO",
                photo = "https://jh2ukzgb546squzma2zxtkr6ckignjy7c6thm7xhe43aj7q3norq.arweave.net/SfVFZMHvPShTLAazeao-EpBmpx8XpnZ-5yc2BP4ba6M",
            },
            {
                name = "Bob Smith",
                designation = "CTO",
                photo = "https://3v7icsuojvbggeifpyk6avvv5pz4vueyaj3kmzu65xvf5msqlgaq.arweave.net/3X6BSo5NQmMRBX4V4Fa16_PK0JgCdqZmnu3qXrJQWYE"
            },
        },
        socials = {
            website = "https://www.saturn.io",
            x = "https://x.com/saturn",
            discord = "https://discord.gg/saturn",
            github = "https://github.com/saturn",
        },
    },
    {
        process = "BaMK1dfayo75s3q1ow6AO64UDpD9SEFbeE8xYrY2fyQ",
        tokenProcess = "BUhZLMwQ6yZHguLtJYA5lLUa9LQzLXMXRfaq9FVcPJc",
        id = "ORBT",
        amountStaked = 0,
        name = "0rbit",
        description = "Decentralized Oracle Network on Arweave | Get ACCESS to LIMITLESS DATA",
        logo = "https://c4mz3c5iyyh5ok6lqdmhy7kyw4qp4bujf6tncfudhkeqp47r5vga.arweave.net/Fxmdi6jGD9cry4DYfH1YtyD-BokvptEWgzqJB_Px7Uw",
        ticker = "0RBT",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Lucifer0x17",
                designation = "Founder",
                photo = "https://wh5yzmobmp5yd32aknbdwwejfiywvnshb74olhkbsb5zu45qtomq.arweave.net/sfuMscFj-4HvQFNCO1iJKjFqtkcP-OWdQZB7mnOwm5k",
            },
            {
                name = "Megabyte",
                designation = "Co-Founder",
                photo = "https://dzych6fmqu3qtu6m65f4xnrl7rqfa43qb46vdnufm52dy633p4uq.arweave.net/HnAj-KyFNwnTzPdLy7Yr_GBQc3APPVG2hWd0PHt7fyk",
            },
        },
        socials = {
            website = "https://www.0rbit.co",
            x = "https://twitter.com/0rbitco",
            discord = "https://discord.gg/JVSjqaKJgV",
            github = "https://github.com/0rbit-co",
        },
    },
    {
        process = "UdPDhw5S7pByV3pVqwyr1qzJ8mR8ktzi9olgsdsyZz4",
        tokenProcess = "UdPDhw5S7pByV3pVqwyr1qzJ8mR8ktzi9olgsdsyZz4",
        id = "NEO",
        amountStaked = 0,
        name = "BetterIDEa",
        description = "One stop env for devs on Arweave",
        logo = "https://3tbwnreigoo66tkk6flg3iu4ychsb3tfcxmcqef3yrawt3k2raba.arweave.net/3MNmxIgzne9NSvFWbaKcwI8g7mUV2CgQu8RBae1aiAI",
        ticker = "NEO",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Ankush",
                designation = "Founder",
                photo = "https://jfudcx3lve5x2hpxq3imp2zev7yn7vcahyjkru5gfuozdbbnjtja.arweave.net/SWgxX2upO30d94bQx-skr_Df1EA-EqjTpi0dkYQtTNI",
            },
            {
                name = "Farat",
                designation = "Principle Designer",
                photo = "https://476peplyggustplk7fd5txyoi7fjltce7yspwlezvivu6e2lcdra.arweave.net/5_zyPXgxqSm9avlH2d8OR8qVzET-JPssmaorTxNLEOI",
            },
        },
        socials = {
            website = "https://betteridea.dev/",
            x = "https://twitter.com/betteridea_dev",
            discord = "https://discord.gg/nm6VKUQBrA",
            github = "https://github.com/ankushKun/betteride",
        },
    },
    {
        process = "RdiOs7wNV7g-rZfb2IpnnrzTAMpljSwZZRNQOx8-cR8",
        tokenProcess = "RdiOs7wNV7g-rZfb2IpnnrzTAMpljSwZZRNQOx8-cR8",
        id = "REBEL",
        amountStaked = 0,
        name = "Rebel",
        description =
        "Session based Web3 Cloud Gamming Infrastructure focused on providing quality experience to all users",
        logo = "https://fuxzon4lhbav6tfkhdyyfe5bwpea6ool5gqyabvosk3dpmscjqma.arweave.net/LS-XN4s4QV9MqjjxgpOhs8gPOcvpoYAGrpK2N7JCTBg",
        ticker = "NAP",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Nisarg Thakkar",
                designation = "Developer",
                photo = "",
            },
            {
                name = "Pawan AK",
                designation = "Developer",
                photo = "",
            },
        },
        socials = {
            website = "https://arweave-web.vercel.app",
            x = "",
            discord = "",
            github = "",
        },
    },
    {
        process = "",
        tokenProcess = "",
        id = "AOVest",
        amountStaked = 0,
        name = "AOVest",
        description = "Token Vesting for projects to implement streaming of their tokens",
        logo = "https://eo6jgj7iaexzia5lsuznbkae7dj42nvpb2lygxqbi3nrf54ex5ka.arweave.net/I7yTJ-gBL5QDq5Uy0KgE-NPNNq8Ol4NeAUbbEveEv1Q",
        ticker = "VCOIN",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Sidarth Manjun",
                designation = "Developer",
                photo = "",
            },
            {
                name = "Sai Rupa Netha Yarramada",
                designation = "Designer",
                photo = "",
            },
            {
                name = "Kunal Garg",
                designation = "Developer",
                photo = "",
            },
        },
        socials = {
            website = "",
            x = "",
            discord = "",
            github = "",
        },
    },
    {
        process = "-",
        tokenProcess = "-",
        id = "SAM",
        amountStaked = 0,
        name = "Smart Auditing and Monitoring",
        description = "Vulnerabilities auditing on us, contracting is on you",
        logo = "https://qb66im5wls6u5465glwjhj3vzmjc7ivgmuqtzz6wvkq5xgizz42q.arweave.net/gH3kM7ZcvU7z3TLsk6d1yxIvoqZlITzn1qqh25kZzzU",
        ticker = "SAM",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Sidarth Manjun",
                designation = "Developer",
                photo = "",
            },
            {
                name = "Sai Rupa Netha Yarramada",
                designation = "Designer",
                photo = "",
            },
            {
                name = "Kunal Garg",
                designation = "Developer",
                photo = "",
            },
            {
                name = "Haard Solanki",
                designation = "Developer",
                photo = ""
            }
        },
        socials = {
            website = "",
            x = "solanki_haard",
            discord = "",
            github = "github.com/haard18",
        },
    },
    {
        process = "",
        tokenProcess = "-",
        id = "LOOM",
        amountStaked = 0,
        name = "The LOOM",
        description = "A Metaverse on AO",
        logo = "https://hkbgs7qt6kqcg5wvgk4jxohllv64qgsrig6dndydnb6euve6unia.arweave.net/OoJpfhPyoCN21TK4m7jrXX3IGlFBvDaPA2h8SlSeo1A",
        ticker = "LOOM",
        cooldownPeriod = 60 * 60 * 24 * 3, -- 3 days in seconds
        aoethRewardRate = 30,              -- for 1 aoeth, how many tokens of reward
        founders = {
            {
                name = "Mystic",
                designation = "Developer",
                photo = "",
            },
        },
        socials = {
            website = "",
            x = "mystic",
            discord = "",
            github = "github.com/haard18",
        },
    },

}


Handlers.add("Get All Projects", function(msg)
        return msg.Action == "Get-Projects"
    end,

    function(msg)
        Send({ Target = msg.From, Action = "All-Projects", Data = json.encode(PROJECTS) })
    end
)

Handlers.add("Get One Project", function(msg)
        return msg.Action == "Get-Project"
    end,

    function(msg)
        print("Get One Project" .. msg.ProjectId)
        local project = utils.find(function(val) return val.id == msg.ProjectId end)(PROJECTS)

        Send({ Target = msg.From, Action = "One-Project", Data = json.encode(project) })
    end

)

return PROJECTS
