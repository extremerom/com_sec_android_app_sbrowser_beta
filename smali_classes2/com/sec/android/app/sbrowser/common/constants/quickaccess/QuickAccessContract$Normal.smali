.class public final Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessContract$Normal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Normal"
.end annotation


# static fields
.field public static final QUICKACCESS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.beta.quickaccesspinned/pintab"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/QuickAccessContract$Normal;->QUICKACCESS_URI:Landroid/net/Uri;

    return-void
.end method
