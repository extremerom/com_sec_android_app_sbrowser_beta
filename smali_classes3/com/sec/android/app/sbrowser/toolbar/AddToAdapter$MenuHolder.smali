.class Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuHolder"
.end annotation


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b064f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method
