class GetController < ApplicationController

    def download
        send_data 'BEGIN:VCALENDAR
        PRODID:-//www.ozmall.co.jp//restaurant//EN
        VERSION:2.0
        BEGIN:VEVENT
        DTSTART:20220515T040000Z
        DTEND:20220515T060000Z
        DTSTAMP:20220428T012715Z
        DESCRIPTION:2022年5月15日（日）13:00【3名様】\nbills 大阪(大阪/洋食・西洋料理、オセアニア料理、その他)\n※予約日時等を変更した場合は自動反映されないため、マイページからご確認ください\nhttps://spn.ozmall.co.jp/ozpoint/confirm/
        LOCATION:大阪府大阪市北区梅田3-1-3 IUCUA1107F
        SUMMARY:bills 大阪(大阪/洋食・西洋料理、オセアニア料理、その他)
        END:VEVENT
        END:VCALENDAR',
                  :filename => 'hoge.ics',
                  :type => 'text/calendar'
      end


      def downloade
        send_data 'hogehoge',
                  :filename => 'hoge.ics',
                  :type => 'text/calendar',
                  :disposition => 'attachment'
      end
end
