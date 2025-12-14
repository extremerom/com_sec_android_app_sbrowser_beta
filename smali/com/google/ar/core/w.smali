.class public final synthetic Lcom/google/ar/core/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/ar/core/x;


# direct methods
.method public synthetic constructor <init>(Lcom/google/ar/core/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/w;->a:Lcom/google/ar/core/x;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    sget-object v0, Lcom/google/ar/core/ArCoreApkJniAdapter;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/ar/core/w;->a:Lcom/google/ar/core/x;

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-virtual {p0, v0}, Lcom/google/ar/core/x;->accept(Ljava/lang/Object;)V

    return-void
.end method
