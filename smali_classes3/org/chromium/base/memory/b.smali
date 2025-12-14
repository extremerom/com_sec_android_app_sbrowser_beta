.class public final synthetic Lorg/chromium/base/memory/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Integer;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;I)V
    .locals 0

    iput p3, p0, Lorg/chromium/base/memory/b;->a:I

    iput-object p1, p0, Lorg/chromium/base/memory/b;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/chromium/base/memory/b;->b:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/memory/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/chromium/base/memory/b;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lorg/chromium/base/memory/b;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/base/memory/MemoryPressureMonitor;

    invoke-static {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor;->c(Lorg/chromium/base/memory/MemoryPressureMonitor;Ljava/lang/Integer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/chromium/base/memory/b;->b:Ljava/lang/Integer;

    iget-object p0, p0, Lorg/chromium/base/memory/b;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/base/memory/MemoryPressureMonitor$1;

    invoke-static {p0, v0}, Lorg/chromium/base/memory/MemoryPressureMonitor$1;->b(Lorg/chromium/base/memory/MemoryPressureMonitor$1;Ljava/lang/Integer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
