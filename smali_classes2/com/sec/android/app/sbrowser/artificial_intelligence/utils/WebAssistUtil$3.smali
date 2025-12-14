.class Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;II)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fragment:I

.field final synthetic val$type:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$fragment:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$type:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$fragment:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const-string v1, ""

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move-object p1, v1

    goto :goto_7

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$type:I

    if-nez p1, :cond_1

    const-string p1, "20023"

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const-string p1, "20024"

    goto :goto_0

    :goto_1
    const-string p1, "201"

    :goto_2
    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_7

    :cond_2
    const-string p1, "573"

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$type:I

    if-nez p1, :cond_4

    const-string p1, "20090"

    :goto_3
    move-object v1, p1

    goto :goto_4

    :cond_4
    const-string p1, "20091"

    goto :goto_3

    :goto_4
    const-string p1, "574"

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$type:I

    if-nez p1, :cond_6

    const-string p1, "20085"

    :goto_5
    move-object v1, p1

    goto :goto_6

    :cond_6
    const-string p1, "20086"

    goto :goto_5

    :goto_6
    const-string p1, "571"

    goto :goto_2

    :goto_7
    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$url:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/custom_tab_intent/CustomTabIntentUtil;->openInternalCustomTab(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$activity:Landroid/app/Activity;

    const v2, 0x7f140db2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/16 v1, 0x258

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$activity:Landroid/app/Activity;

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;->val$fragment:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const p0, 0x7f060051

    goto :goto_0

    :cond_0
    const p0, 0x7f06002f

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
