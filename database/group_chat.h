#ifndef GROUP_CHAT_H
#define GROUP_CHAT_H

#include <string>
#include <vector>
#include "Poco/JSON/Object.h"
#include "chat.h"
#include <optional>

namespace database
{
    class UserToChat{
        private:
            long _chat_id;
            long _user_id;

        public:

            static UserToChat fromJSON(const std::string & str);

            long             get_user_id() const;
            long             get_chat_id() const;

            long&        user_id();
            long&        chat_id();

            static void init();
            static std::vector<Chat> read_chats_by_user_id(long user_id);
            static std::optional<long> auth(std::string &login, std::string &password);
            void save_to_mysql();

            Poco::JSON::Object::Ptr toJSON() const;

    };
}

#endif