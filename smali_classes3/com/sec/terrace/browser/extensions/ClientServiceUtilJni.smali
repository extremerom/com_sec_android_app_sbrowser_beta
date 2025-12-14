.class Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/ClientServiceUtil$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/ClientServiceUtilJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MXrJYrsB(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public clearJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M9y6giaF(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public init(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQ_BcbMF(JLjava/lang/Object;)V

    return-void
.end method

.method public removeJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MWcaxUm9(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public runJsInterfaceFunctionResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;J[Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MvbyaAmI(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public startClientServiceResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M9r_AVta(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public stopClientServiceResult(JLcom/sec/terrace/browser/extensions/ClientServiceUtil;JLjava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MBzDN0yT(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
