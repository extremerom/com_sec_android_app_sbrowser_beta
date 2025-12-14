.class Lorg/chromium/content/browser/BindingManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManager;->onLowMemory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BindingManager;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BindingManager;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/BindingManager$2;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$2;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-static {v0}, Lorg/chromium/content/browser/BindingManager;->a(Lorg/chromium/content/browser/BindingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BindingManager"

    const-string v2, "onLowMemory: evict %d bindings"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager$2;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-static {p0}, Lorg/chromium/content/browser/BindingManager;->c(Lorg/chromium/content/browser/BindingManager;)V

    return-void
.end method
