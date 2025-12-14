.class public final Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# instance fields
.field public final a:Landroid/text/Spannable;

.field public final b:Landroid/text/PrecomputedText;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText;Ld1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/d;->a:Landroid/text/Spannable;

    iput-object p1, p0, Ld1/d;->b:Landroid/text/PrecomputedText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ld1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Ld1/d;->a:Landroid/text/Spannable;

    const/4 p1, 0x0

    iput-object p1, p0, Ld1/d;->b:Landroid/text/PrecomputedText;

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld1/d;->b:Landroid/text/PrecomputedText;

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    iget-object p0, p0, Ld1/d;->b:Landroid/text/PrecomputedText;

    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .locals 1

    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_0

    iget-object p0, p0, Ld1/d;->b:Landroid/text/PrecomputedText;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld1/d;->a:Landroid/text/Spannable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
