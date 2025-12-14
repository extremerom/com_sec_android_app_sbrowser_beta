.class public final synthetic Lorg/chromium/base/process_launcher/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/base/process_launcher/h;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget p0, p0, Lorg/chromium/base/process_launcher/h;->a:I

    invoke-static {p0}, Lorg/chromium/base/process_launcher/ChildProcessService$1;->v0(I)V

    return-void
.end method
