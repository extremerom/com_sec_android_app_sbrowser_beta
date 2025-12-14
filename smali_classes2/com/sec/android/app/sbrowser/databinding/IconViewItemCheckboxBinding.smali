.class public final Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final checkbox:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1    # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;->rootView:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;->checkbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    check-cast p0, Landroid/widget/CheckBox;

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/sbrowser/databinding/IconViewItemCheckboxBinding;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
