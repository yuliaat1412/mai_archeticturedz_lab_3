#ifndef MESSAGE_H
#define MESSAGE_H

#include <string>
#include <vector>
#include "Poco/JSON/Object.h"
#include <optional>

namespace database
{
    class Message{
        private:
            long _id;
            long _user_id;
			long _chat_id;
			std::string _text;
            

        public:

            static Message fromJSON(const std::string & str);
            long               get_id() const;
            long               get_user_id() const;
            long               get_chat_id() const;
            const std::string &get_message() const;

            long&        id();
            long&        user_id();
            long&        chat_id();
            std::string &message();

            static void init();
            static std::optional<Message> read_by_id(long id);
            static std::optional<Message> read_by_user_id(long id);
            static std::vector<Message> read_by_chat_id(long chat_id);
            void save_to_mysql();

            Poco::JSON::Object::Ptr toJSON() const;

    };
}

#endif