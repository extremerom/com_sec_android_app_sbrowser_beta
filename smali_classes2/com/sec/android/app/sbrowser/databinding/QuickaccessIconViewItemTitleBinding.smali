.class public final Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rootView:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->rootView:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;-><init>(Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->rootView:Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    return-object p0
.end method
