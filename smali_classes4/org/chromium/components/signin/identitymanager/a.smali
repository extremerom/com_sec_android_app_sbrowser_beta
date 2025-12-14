.class public final synthetic Lorg/chromium/components/signin/identitymanager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/identitymanager/a;->a:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

    iput-object p2, p0, Lorg/chromium/components/signin/identitymanager/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lorg/chromium/components/signin/identitymanager/a;->c:J

    iput-object p5, p0, Lorg/chromium/components/signin/identitymanager/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    iget-object v1, p0, Lorg/chromium/components/signin/identitymanager/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lorg/chromium/components/signin/identitymanager/a;->c:J

    iget-object v0, p0, Lorg/chromium/components/signin/identitymanager/a;->a:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

    iget-object v4, p0, Lorg/chromium/components/signin/identitymanager/a;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->a(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method
