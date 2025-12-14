.class public final synthetic Lorg/chromium/base/memory/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/base/memory/MemoryPurgeManager;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/memory/MemoryPurgeManager;I)V
    .locals 0

    iput p2, p0, Lorg/chromium/base/memory/c;->a:I

    iput-object p1, p0, Lorg/chromium/base/memory/c;->b:Lorg/chromium/base/memory/MemoryPurgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/memory/c;->a:I

    iget-object p0, p0, Lorg/chromium/base/memory/c;->b:Lorg/chromium/base/memory/MemoryPurgeManager;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->a(Lorg/chromium/base/memory/MemoryPurgeManager;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lorg/chromium/base/memory/MemoryPurgeManager;->b(Lorg/chromium/base/memory/MemoryPurgeManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
