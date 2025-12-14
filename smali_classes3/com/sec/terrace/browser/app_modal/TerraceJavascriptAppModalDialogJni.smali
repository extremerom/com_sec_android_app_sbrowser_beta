.class public Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;


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

.method public static get()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public didAcceptAppModalDialog(JLcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MiA2NSHM(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public didCancelAppModalDialog(JLcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->ML7Mcvb8(JLjava/lang/Object;Z)V

    return-void
.end method
