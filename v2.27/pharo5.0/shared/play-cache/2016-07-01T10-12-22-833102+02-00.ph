| t7 codeCompo |"codeCompo := 'Descriptor PrinterPH5 extends Component {	provides {		default : {			print(txt : String by require);			main();		}	}		internally requires { 		test : TestPH5;		test2 : TestPH5;	}		requires { 		article : ArticlePH5;		t : Test2PH5;	}		architecture { 		connect test to default@(TestPH5.new());		connect test2 to default@(TestPH5.new());	}		service main() {		self.print(''Printer PH5 test print'');	}		service print(txt : String by require) {		Transcript.crShow(txt);	}}'."codeCompo := 'Descriptor ContainerPH5 extends Component {	provides {		default : {			main();		}	}		internally requires {		printer : PrinterPH5;		printer2 : PrinterPH5;		test2 : Test2PH5;		pp2 : PrinterPH5;		test : TestPH5;		pp : PrinterPH5;		a1 : ArticlePH5;		a2 : ArticlePH5;	}		requires { 		article : ArticlePH5;	 }		architecture {		connect printer to default@(PrinterPH5.new()); 			connect printer2 to default@(PrinterPH5.new()); 			connect test2 to default@(Test2PH5.new());			connect pp2 to default@printer2;		connect t@printer2 to default@test2;		connect t@printer to default@test2;		connect pp to default@printer2;	}		service main() {		printer.print(''Contener PH5 test print'');	}	}'."codeCompo := 'Descriptor ArticlePH5 extends Component {	provides {		default : {			getTitle();			setTitle(t : String by provide);		}	}		internally requires {		title : String;	}		architecture {		connect title to default@(String.new());	}		service getTitle () {		return title;	}		service setTitle (t : String by provide) {		connect title to t;	}}'.""codeCompo := 'Descriptor TestPH5 extends Component {	provides {		default : {			foo ();		};				t2 : { 			foo ();		};	}}'.codeCompo := 'Descriptor Test2PH5 extends Component {}'."t7 := CompoToSmalltalk convert: codeCompo.Compiler evaluate: t7.""CompoBrowser open.					