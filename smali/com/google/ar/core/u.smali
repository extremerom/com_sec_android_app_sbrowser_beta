.class public final Lcom/google/ar/core/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ar/core/s;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Lcom/google/ar/core/v;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/v;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ar/core/u;->a:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 2

    new-instance v0, LH/e;

    iget-object v1, p0, Lcom/google/ar/core/u;->a:Ljava/util/function/Consumer;

    invoke-direct {v0, v1, p1}, LH/e;-><init>(Ljava/util/function/Consumer;Lcom/google/ar/core/ArCoreApk$Availability;)V

    iget-object p0, p0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/v;

    iget-object p0, p0, Lcom/google/ar/core/v;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
