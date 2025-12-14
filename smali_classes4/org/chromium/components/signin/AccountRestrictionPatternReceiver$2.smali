.class Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->getRestrictionPatternsAsync()Lorg/chromium/base/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/util/List<",
        "Lorg/chromium/components/signin/PatternMatcher;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

.field final synthetic val$promise:Lorg/chromium/base/Promise;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;Lorg/chromium/base/Promise;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->val$promise:Lorg/chromium/base/Promise;

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->doInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->this$0:Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;->a(Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver$2;->val$promise:Lorg/chromium/base/Promise;

    invoke-virtual {p0, p1}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    return-void
.end method
