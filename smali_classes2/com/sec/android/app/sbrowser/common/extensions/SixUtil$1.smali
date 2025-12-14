.class Lcom/sec/android/app/sbrowser/common/extensions/SixUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showWithDelay(LH6/o;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$snackbar:LH6/o;


# direct methods
.method public constructor <init>(LH6/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil$1;->val$snackbar:LH6/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil$1;->val$snackbar:LH6/o;

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method
