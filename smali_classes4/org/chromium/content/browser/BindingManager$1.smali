.class Lorg/chromium/content/browser/BindingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManager;->onTrimMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BindingManager;

.field final synthetic val$level:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BindingManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    iput p2, p0, Lorg/chromium/content/browser/BindingManager$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lorg/chromium/content/browser/BindingManager$1;->val$level:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-static {v1}, Lorg/chromium/content/browser/BindingManager;->a(Lorg/chromium/content/browser/BindingManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BindingManager"

    const-string v3, "onTrimMemory: level=%d, size=%d"

    invoke-static {v2, v3, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-static {v0}, Lorg/chromium/content/browser/BindingManager;->a(Lorg/chromium/content/browser/BindingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/BindingManager$1;->val$level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p0, v0}, Lorg/chromium/content/browser/BindingManager;->b(Lorg/chromium/content/browser/BindingManager;F)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Lorg/chromium/content/browser/BindingManager;->b(Lorg/chromium/content/browser/BindingManager;F)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/BindingManager$1;->this$0:Lorg/chromium/content/browser/BindingManager;

    invoke-static {p0}, Lorg/chromium/content/browser/BindingManager;->c(Lorg/chromium/content/browser/BindingManager;)V

    :goto_0
    return-void
.end method
