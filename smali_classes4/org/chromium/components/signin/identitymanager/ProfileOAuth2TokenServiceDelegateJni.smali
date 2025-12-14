.class Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;

    invoke-direct {v0}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onOAuth2TokenFetched(Ljava/lang/String;JZJ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MTN9MD0o(Ljava/lang/Object;JZJ)V

    return-void
.end method
