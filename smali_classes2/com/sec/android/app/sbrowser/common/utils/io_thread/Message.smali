.class public abstract Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;,
        Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;
    }
.end annotation


# instance fields
.field private mRunType:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;->mRunType:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    return-void
.end method


# virtual methods
.method public getRunType()Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message;->mRunType:Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$RunType;

    return-object p0
.end method

.method public abstract onResult(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;)V
.end method

.method public abstract runOnIOThread(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/utils/io_thread/Message$Result;
.end method
