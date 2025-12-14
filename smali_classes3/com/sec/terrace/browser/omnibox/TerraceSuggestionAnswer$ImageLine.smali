.class public Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageLine"
.end annotation


# instance fields
.field private final mAdditionalText:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;

.field private final mImage:Ljava/lang/String;

.field private final mStatusText:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;

.field private final mTextFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            ">;",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            "Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;->mTextFields:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;->mAdditionalText:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;

    iput-object p3, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;->mStatusText:Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$TextField;

    iput-object p4, p0, Lcom/sec/terrace/browser/omnibox/TerraceSuggestionAnswer$ImageLine;->mImage:Ljava/lang/String;

    return-void
.end method
