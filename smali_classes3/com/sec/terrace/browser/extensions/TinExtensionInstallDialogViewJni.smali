.class Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MVOhsjWD(JLjava/lang/Object;)V

    return-void
.end method

.method public onDialogAccepted(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MGa7WpG$(JLjava/lang/Object;)V

    return-void
.end method

.method public onDialogCanceled(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYiKcc5M(JLjava/lang/Object;)V

    return-void
.end method
