.class Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public checkStatusFunctionResult(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MkH_xq_P(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public init(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M_ZRVKBp(JLjava/lang/Object;)V

    return-void
.end method

.method public installAppFunctionResult(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M82J1kI1(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
