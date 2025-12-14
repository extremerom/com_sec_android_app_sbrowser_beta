.class Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/sms/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRetrieverClientWrapper"
.end annotation


# instance fields
.field private mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

.field private final mSmsCodeBrowserClient:LV4/a;

.field private final mSmsRetrieverClient:LV4/b;


# direct methods
.method public constructor <init>(LV4/b;LV4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsRetrieverClient:LV4/b;

    iput-object p2, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsCodeBrowserClient:LV4/a;

    return-void
.end method


# virtual methods
.method public setContext(Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mContext:Lorg/chromium/content/browser/sms/Wrappers$WebOTPServiceContext;

    return-void
.end method

.method public startSmsCodeBrowserRetriever()LR5/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR5/h;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsCodeBrowserClient:LV4/a;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsCodeBrowserClient:LV4/a;

    check-cast p0, Lw5/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v0

    sget-object v1, Lw5/c;->a:Lcom/google/android/gms/common/Feature;

    filled-new-array {v1}, [Lcom/google/android/gms/common/Feature;

    move-result-object v1

    iput-object v1, v0, LG6/f;->e:Ljava/lang/Object;

    new-instance v1, LR7/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LG6/f;->d:Ljava/lang/Object;

    const/16 v1, 0x61e

    iput v1, v0, LG6/f;->c:I

    invoke-virtual {v0}, LG6/f;->a()Lc5/L;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb5/j;->doWrite(Lc5/u;)LR5/h;

    move-result-object p0

    return-object p0
.end method

.method public startSmsUserConsent(Ljava/lang/String;)LR5/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LR5/h;"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsRetrieverClient:LV4/b;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/content/browser/sms/Wrappers$SmsRetrieverClientWrapper;->mSmsRetrieverClient:LV4/b;

    check-cast p0, Lw5/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v0

    new-instance v1, LC0/k;

    invoke-direct {v1, p0, p1}, LC0/k;-><init>(Lw5/b;Ljava/lang/String;)V

    iput-object v1, v0, LG6/f;->d:Ljava/lang/Object;

    sget-object p1, Lw5/c;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {p1}, [Lcom/google/android/gms/common/Feature;

    move-result-object p1

    iput-object p1, v0, LG6/f;->e:Ljava/lang/Object;

    const/16 p1, 0x620

    iput p1, v0, LG6/f;->c:I

    invoke-virtual {v0}, LG6/f;->a()Lc5/L;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/j;->doWrite(Lc5/u;)LR5/h;

    move-result-object p0

    return-object p0
.end method
