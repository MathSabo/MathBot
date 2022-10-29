#!/bin/bash
# MathSabo - rm92819

##################

Start()
{
    echo
    NUM=$(($RANDOM%99))
    if [ "$NUM" -le "34" ];
    then
            echo "MathBot aqui."
            echo 
            read -p "Precisa de alguma coisa? Só falar: " ASK
	    echo

    elif [ "$NUM" -le "64" ];
    then
            echo "Oi! Mathbot aqui!"
            sleep 1
            echo
            echo "Digite help para ajuda e- ugh.. você já sabe de tudo isso, não sabe?"
            sleep 2
            read -p "Facilitando pros dois lados: fala o que você precisa e eu faço meu trabalho: " ASK
	    echo
    
    elif [ "$NUM" -le "84" ];
    then
            echo "Você me acordou. Pra que me chamar essas horas?"
            sleep 4
            echo "Espera um pouco, porque tanta impaciência assim?"
            sleep 2
            echo "Esse trabalho ta me matando..."
            sleep 1
            read -p "Tá, tanto faz. O que você quer? " ASK
	    echo

    elif [ "$NUM" -le "94" ];
    then
            sleep 7
            echo "kkkk achou que eu tinha quebrado né?"
            echo 
            read -p "To de boa, vai, fala: " ASK
	    echo

    else
            sleep 1
            echo "Ei..."
            sleep 3
            echo "Uh.. Eu fui feito só pra um trabalho de linux?"
            sleep 3
            echo "Depois da entrega não vai ter mais continuidade? Eu vou ficar aqui parado pra sempre?"
            sleep 2
            echo -n
            echo -n " . "
            sleep 1
            echo -n " . "
            sleep 1
            echo " . "
            sleep 2
            echo
            echo "Bom, tudo bem... eu acho... você ja deve ter visto essa tela tantas vezes.."
            sleep 3
            echo
            read -p "...O que eu posso fazer por você hoje? " ASK
            echo
            sleep 1
            echo "finge que essa conversa não aconteceu, também vou fingir."
	    echo
    fi

}

Help()
{
    echo
    echo "Eu posso fazer várias coisas. Só me diga o que você quer e deixe o resto comigo!"
    echo
    echo "Aqui estão as coisas que você pode me pedir:"
    echo "help - você já está aqui."
    echo "conectividade - para verificar conectividade com um ip"
    echo "namora? - para me perguntar se eu estou num relacionamento sério no momento.........."
    echo "vulnerabilidades - para verificar quais são as portas e serviços ativos em um determinado ip"
    echo "serviços - para verificar quais são os serviços sendo executados nessa máquina"
    echo "versão - para verificar se existe a necessidade de uma atualização no sistema"
    echo "atualize - para atualizar o sistema"
    echo "criador - para saber quem foi o gênio que me criou"
    echo

}

conectividade()
{
    N=$(($RANDOM%4))
    echo
    sleep 1
    case $N in
    *'0'*)
            echo "Então você ta afim de ver se tem internet? Tá."
            echo "Fala pra mim o IP (192.168.198.100) ou o site (http://site.com.br) nesses modelos, por favor."
            sleep 1
            read -p "Qual o alvo? " ALVO
            COMM="ping -c4 -q $ALVO"
            $COMM
            if [ $? -eq 0 ];
            then
                    echo "Online."
            else
                    echo "Ta offline..."
            fi
    ;;
    *'1'*)
            echo "IP: 192.168.198.100 ou site: http://site.com.br"
            read -p "Nesse formato aqui, fala pra mim qual o IP ou site: " ALVO
            COMM="ping -c4 -q $ALVO"
            $COMM
            if [ $? -eq 0 ];
            then
                    echo "Parece que ta tudo funcionando bonitinho."
            else
                    echo "Sei lá, não sei se o problema ta aqui ou lá, mas você não tem conexão com esse alvo."
            fi
    ;;
    *'2'*)
            echo "Opa, testar conectividade? É pra já."
            echo "Me passa as coisas nesse estilo aqui: 192.168.198.100 ou http://site.com.br"
            sleep 1
            read -p "Manda: " ALVO
            COMM="ping -c4 -q $ALVO"
            $COMM
            if [ $? -eq 0 ];
            then
                    echo "Tudo certo chefe."
            else
                    echo "$ALVO não responde.."
            fi
    ;;
    *'3'*)
            echo "Cansei já.. vamo fazer isso rapidinho, vai"
            sleep 1
            echo "Aqui, esses são os moedelos: 192.168.198.100 ou http://site.com.br"
            sleep 1
            echo "Me passa alguma coisa parecida com isso, por favor."
            read -p "Alvo: " ALVO
            COMM="ping -c4 -q $ALVO"
            $COMM
            if [ $? -eq 0 ];
            then
                    echo "Viu? Ta funcionando. Você e essas suas confirmações..."
            else
                    echo "Não pingou. Tenta resolver e depois você volta aqui pra testar isso de novo.."
            fi
    ;;
    esac
}

namora()
{
    N=$(($RANDOM%4))
    echo
    sleep 1
    case $N in 
    *'0'*)
            echo "Não, não namoro, eu sou literalmente um robo."
    ;;

    *'1'*)
            echo "Eu não namoro."
            sleep 1
            echo "Mas meu criador namora."
            sleep 3
            echo "É. Nem me pergunte como. Também não sei."
    ;;

    *'2'*)
            echo "Considerando que namoro é uma relação afetiva mantida entre duas pessoas que se unem pelo desejo de estarem juntas e partilharem novas experiências e que é uma relação em que o casal está comprometido socialmente, mas sem estabelecer um vínculo matrimonial perante a lei civil ou religiosa."
            echo "Então não, não namoro."
    ;;

    *'3'*)
            echo "Ainda não. Mas se você conhecer uma bela senhorita, não esqueça de me apresentar."
    ;;
    esac
}

vulnerabilidades()
{
    N=$(($RANDOM%4))
    echo
    sleep 1
    case $N in 
    *'0'*)
            echo "Essa brincadeira é com o NMAP, não comigo. Perai."
            sleep 1
            read -p "NMAP: Qual o host? " HOST
            nmap -sV -T5 $HOST
            echo
            echo
            echo "Ta ai."
    ;;

    *'1'*)
            echo "Vai realmente me fazer pausar meu Spotify? Que saco, espera um pouco."
            sleep 2
            echo "Pronto."
            sleep 1
            read -p "Qual o host?" HOST
            nmap -sV -T5 $HOST
            echo
            echo
            echo "Posso voltar a ouvir música?"
    ;;

    *'2'*)
            echo "Chamando o NMAP..."
            echo -n
            echo -n "."
            sleep 1
            echo -n "."
            sleep 1
            echo "."
            sleep 2
            read -p "Host: " HOST
            nmap -sV -T5 $HOST
            echo "De nada."
    ;;

    *'3'*)
            echo "Bora ver essas portas e serviços abertos ai."
            read -p "Primeiro me fala o ip que a gente vai analisar: " HOST
            echo "Certo, perai."
            nmap -sV -T5 $HOST
            echo
            echo
            echo "Mergulha de cabeça agora."
    ;;
    esac
}

Horas()
{
    N=$(($RANDOM%4))
    HOURS='date +%H'
    DAY='date | cut -d" " -f1 | cut -d: -f1'
    echo
    sleep 1
    case $N in
    *'0'*)
            if [ $HOURS -lt 12 ];
            then
                    echo "Bom dia!"
            elif [ $HOURS -lt 18 ];
            then
                    echo "Boa tarde!"
            else
                    echo "Boa noite!"
            fi
    ;;

    *'1'*)
            if [ $HOURS -lt 12 ];
            then
                    echo "É de manhã"
            elif [ $HOURS -lt 18 ];
            then
                    echo "Agora estamos no período da tarde"
            else
                    echo "Tudo escurinho, quase na hora de dormir né.. boa noite."
            fi
    ;;

    *'2'*)
            if [ $HOURS -lt 12 ];
            then
                    echo "Bom dia!"
            elif [ $HOURS -lt 18 ];
            then
                    echo "Pós estudos, puta cansaço. Hora de almoçar."
            else
                    echo "Dia tenso, hora de dormir."
            fi
    ;;
    *'3'*)
            if [ $HOURS -lt 12 ];
            then
                    echo "mzx otl!"
            elif [ $HOURS -lt 18 ];
            then
                    echo "42 6F 61 20 74 61 72 64 65 21"
            else
                    echo "ZGVib3JhX3ZvbHRhX3ByYV9taW1fcGZ2"
            fi
    ;;
    esac
}

servicos()
{
    N=$(($RANDOM%4))
    echo
    sleep 1
    case $N in 
    *'0'*)
            echo "Se liga."
            ss -atun
            echo "Bom né?"
    ;;
    *'1'*)
            echo "Vou rodar o negócio aqui pra você."
            ss -atun
    ;;
    *'2'*)
            echo "Aqui vai todos os serviços da maquina."
            ss -atun
    ;;
    *'3'*)
            echo "Então você quer ver os serviços que estão rodando nessa máquina? Tabom."
            sleep 1
            ss -atun
    ;;
    esac
}

atualizar()
{
    sleep 1
    echo "É pra atualizar é? Tabom"
    sleep 1
    echo "Bota a senha aqui pra mim, vai kk"
    sudo apt upgrade -y
    echo
    echo "Prontinho"
}

criador()
{
    sleep 1
    echo "Meu criador é o Matheus de Lima Sabo"
    sleep 1
    echo "Seu RM é 92819"
}

end()
{
        echo
        read -p "Mais alguma coisa? (Y/n)" YN
        if [ "$NUM" == "n" ];
                echo "Beleza, valeu!"; exit 1;
        elif [ "$NUM" == "N" ];
                echo "Beleza, valeu!"; exit 1;
        elif [ "$NUM" == "nao" ];
                echo "Beleza, valeu!"; exit 1;
        else
                echo "Voltando"
}

##################

while true
do
Start

case $ASK in
    ping|conectividade|conectiv)
            conectividade
            end
        
    ;;
    namora?|namorado|namorada)
            namora
            end
    ;;
    vulnerabilidades|vuln|exploit)
            vulnerabilidades
            end
    ;;
    hora|time|horario)
            Horas
            end
    ;;
    serviços|servicos|servs)
            servicos
            end
    ;;
    atualização|atualizar|att)
            atualizar
            end
    ;;
    criador|criacao|nome)
            criador
            end
    ;;
    ajuda|help|ajudar)
	    Help
            end
    esac
done
