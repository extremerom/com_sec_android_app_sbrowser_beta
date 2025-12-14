.class Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifiedCallback"
.end annotation


# instance fields
.field private final mOnline:Ljava/lang/Boolean;

.field private final mResult:Z

.field final synthetic this$0:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->this$0:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->mResult:Z

    iput-object p3, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->mOnline:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->this$0:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    iget-boolean v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->mResult:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$VerifiedCallback;->mOnline:Ljava/lang/Boolean;

    invoke-static {v0, v1, p0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->a(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;ZLjava/lang/Boolean;)V

    return-void
.end method
