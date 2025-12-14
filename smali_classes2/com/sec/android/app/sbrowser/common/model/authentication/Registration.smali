.class public abstract Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/model/authentication/Registration;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V
.end method
