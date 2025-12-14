.class public Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;,
        Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;
    }
.end annotation


# instance fields
.field private mSpannableTextItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->mSpannableTextItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->mSpannableTextItemList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->mSpannableTextItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toSpannable(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->mSpannableTextItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mEndTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartTag:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mEndTag:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartTag:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->d(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;I)V

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->c(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;->mSpannableTextItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mClickableSpan:Landroid/text/style/ClickableSpan;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->b(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->a(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)I

    move-result p1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    return-object v0
.end method
