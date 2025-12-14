.class public Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration$Builder;
    }
.end annotation


# instance fields
.field public final mDatabaseName:Ljava/lang/String;

.field public final mDatabaseVersion:I

.field public final mKeyStoreAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseName:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mDatabaseVersion:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/sqlcipher/SQLiteConfiguration;->mKeyStoreAlias:Ljava/lang/String;

    return-void
.end method
