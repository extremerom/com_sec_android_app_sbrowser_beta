.class public Lcom/sec/sbrowser/spl/wrapper/MajoSuggestionSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_FLAG_GRAMMAR_SUGGESTION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final SEM_FLAG_TYPO_SUGGESTION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_FLAG_TYPO_SUGGESTION"

    const-class v2, Landroid/text/style/SuggestionSpan;

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSuggestionSpan;->SEM_FLAG_TYPO_SUGGESTION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v1, "SEM_FLAG_GRAMMAR_SUGGESTION"

    invoke-direct {v0, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSuggestionSpan;->SEM_FLAG_GRAMMAR_SUGGESTION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method
