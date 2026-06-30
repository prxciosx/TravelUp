resul = irandom(1);
text = "Buy"
sifra = ": $$$$"
if (resul>0) {	
	pontu = 1;	
} else{
	pontu = -1;
}

texti = irandom_range(0,2);
textp = "";

switch (texti){
	case 0:
		if (pontu < 1){
			textp = "OFERTA RELÂMPAGO: Viagem para a Copa por APENAS R$ 299. Restam 3 vagas. Garanta AGORA antes que acabe.";
		} else{
			textp = "Pacote oficial para a Copa 2026: passagem aérea e hotel a partir de R$ 4.990. Consulte datas e disponibilidade."
		}
	break;
	case 1:
		if (pontu < 1){
			textp = "Você foi SELECIONADO para um pacote VIP da Copa por APENAS R$ 199. Confirme seu cadastro e efetue o PAGAMENTO em ATÉ 30 minutos.";
		} else{
			textp = "Viaje para a Copa com segurança. Pacotes completos a partir de R$ 5.490 em até 10x sem juros.";
		}
	break;
	case 2:
		if (pontu < 1){
			textp = "Parabéns! Hospedagem e passagens para a Copa por APENAS R$ 89 de taxa administrativa. Promoção válida SOMENTE HOJE.";
		} else{
			textp = "Hospedagem próxima aos estádios, transporte incluído e suporte 24h. Pacotes a partir de R$ 6.290.";
		}
	break;
}