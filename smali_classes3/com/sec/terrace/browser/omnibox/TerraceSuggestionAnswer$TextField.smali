.class public Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextField"
.end annotation


# instance fields
.field private final mNumLines:I

.field private final mStyle:I
    .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextStyle;
    .end annotation
.end field

.field private final mText:Ljava/lang/String;

.field private final mType:I
    .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextType;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$AnswerTextStyle;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;->mType:I

    iput-object p2, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;->mStyle:I

    iput p4, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;->mNumLines:I

    return-void
.end method
