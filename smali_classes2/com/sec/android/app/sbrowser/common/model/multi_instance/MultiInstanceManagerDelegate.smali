.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    return-void
.end method


# virtual methods
.method public clearSecretModeTabs()V
    .locals 0

    return-void
.end method

.method public getInstanceCount()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getInstanceId(I)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
