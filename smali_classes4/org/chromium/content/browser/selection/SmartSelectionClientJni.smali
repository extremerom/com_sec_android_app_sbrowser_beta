.class Lorg/chromium/content/browser/selection/SmartSelectionClientJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/selection/SmartSelectionClient$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/selection/SmartSelectionClientJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/selection/SmartSelectionClientJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancelAllRequests(JLorg/chromium/content/browser/selection/SmartSelectionClient;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MVHq2mA2(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content/browser/selection/SmartSelectionClient;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MFA_dMJC(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public requestSurroundingText(JLorg/chromium/content/browser/selection/SmartSelectionClient;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M2GZ6ZNR(JLjava/lang/Object;II)V

    return-void
.end method
