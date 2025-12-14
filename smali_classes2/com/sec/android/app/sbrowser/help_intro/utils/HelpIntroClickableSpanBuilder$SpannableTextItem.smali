.class Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpannableTextItem"
.end annotation


# instance fields
.field mClickableSpan:Landroid/text/style/ClickableSpan;

.field private mEndIdx:I

.field mEndTag:Ljava/lang/String;

.field private mStartIdx:I

.field mStartTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mEndIdx:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartIdx:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mEndIdx:I

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroClickableSpanBuilder$SpannableTextItem;->mStartIdx:I

    return-void
.end method
