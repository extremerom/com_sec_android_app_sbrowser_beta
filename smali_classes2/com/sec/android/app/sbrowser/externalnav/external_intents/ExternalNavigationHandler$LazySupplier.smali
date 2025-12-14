.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazySupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mInnerSupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->mInnerSupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->mInnerSupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->mInnerSupplier:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;->mValue:Ljava/lang/Object;

    return-object p0
.end method
