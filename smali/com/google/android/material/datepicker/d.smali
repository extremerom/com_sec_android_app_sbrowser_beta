.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/c;

.field public final b:Lcom/google/android/material/datepicker/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/material/datepicker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040351

    invoke-static {p1, v1, v0}, LG5/u;->f(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v1, La6/a;->u:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, LG5/v;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/d;->a:Lcom/google/android/material/datepicker/c;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v2, p1}, Lcom/google/android/material/datepicker/c;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/c;

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
