.class Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onReceiveSentences(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

.field final synthetic val$autoPlay:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->val$autoPlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    const-string v1, ""

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->val$autoPlay:Z

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onLanguageDetected(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "pt"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ptbr"

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler$1;->val$autoPlay:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->onLanguageDetected(Ljava/lang/String;Z)V

    return-void
.end method
