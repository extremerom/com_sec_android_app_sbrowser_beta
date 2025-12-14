.class public abstract Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;
.super Landroidx/databinding/k;
.source "SourceFile"


# instance fields
.field public final scanningEffectView:Lcom/samsung/android/sesl/visualeffect/ScanningEffectView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/samsung/android/sesl/visualeffect/ScanningEffectView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/k;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;->scanningEffectView:Lcom/samsung/android/sesl/visualeffect/ScanningEffectView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/databinding/f;->a:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e080e

    invoke-static {p1, p0, v0}, Landroidx/databinding/k;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/k;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/databinding/ScanningEffectLayoutBinding;

    return-object p0
.end method
