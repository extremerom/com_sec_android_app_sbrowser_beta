.class public final Lcom/google/android/appfunctions/internal/ClassRegistry_AppFunctionInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/appfunctions/internal/ClassRegistry;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/appfunctions/internal/ClassRegistry<",
        "Lcom/google/android/appfunctions/internal/AppFunctionInvoker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/google/android/appfunctions/internal/ClassRegistry_AppFunctionInvoker;",
        "Lcom/google/android/appfunctions/internal/ClassRegistry;",
        "Lcom/google/android/appfunctions/internal/AppFunctionInvoker;",
        "<init>",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;

    invoke-direct {v0}, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;-><init>()V

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/appfunctions/internal/ClassRegistry_AppFunctionInvoker;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/appfunctions/internal/ClassRegistry_AppFunctionInvoker;->a:Ljava/util/List;

    return-object p0
.end method
