.class public abstract Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mContext:Landroid/content/Context;

.field protected mProvider:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getBatchSize()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public abstract insert(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract parse(Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract update(Ljava/lang/String;JJLjava/lang/String;)Z
.end method
