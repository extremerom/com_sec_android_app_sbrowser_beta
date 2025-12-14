.class public final Lz4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lz4/b;->b:Landroid/os/Bundle;

    return-void
.end method
