.class public final synthetic Lcom/sec/android/app/sbrowser/common/utils/io_thread/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/ThreadPoolManager;-><init>()V

    return-object p0
.end method
