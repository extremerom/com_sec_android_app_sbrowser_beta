.class Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate$Natives;


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

.method public static get()Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegateJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onWebApkInfoRetrieved(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJZ)V
    .locals 0

    invoke-static/range {p1 .. p20}, LJ/N;->MPBxnjzV(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIJJJZ)V

    return-void
.end method
