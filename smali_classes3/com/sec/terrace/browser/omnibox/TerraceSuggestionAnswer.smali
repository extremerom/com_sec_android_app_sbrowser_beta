.class public Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;,
        Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;,
        Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextStyle;,
        Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextType;,
        Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerType;
    }
.end annotation


# instance fields
.field private final mFirstLine:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;

.field private final mSecondLine:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;

.field private final mType:I
    .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;->mType:I

    iput-object p2, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;->mFirstLine:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;

    iput-object p3, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;->mSecondLine:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;

    return-void
.end method

.method private static addTextFieldToList(Ljava/util/List;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ">;",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static createImageLine(Ljava/util/List;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Ljava/lang/String;)Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ">;",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;-><init>(Ljava/util/List;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createTerraceSuggestionAnswer(ILcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;)Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;
    .locals 2
    .param p0    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerType;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;-><init>(ILcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;)V

    return-object v0
.end method

.method private static createTextField(ILjava/lang/String;II)Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;
    .locals 1
    .param p0    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextType;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextStyle;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method private static createTextFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
