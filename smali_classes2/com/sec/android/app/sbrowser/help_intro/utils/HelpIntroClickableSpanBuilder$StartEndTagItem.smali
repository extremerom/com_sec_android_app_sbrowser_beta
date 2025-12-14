.class Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$StartEndTagItem;
.super Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartEndTagItem"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ClickableSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mEndTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mClickableSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method
