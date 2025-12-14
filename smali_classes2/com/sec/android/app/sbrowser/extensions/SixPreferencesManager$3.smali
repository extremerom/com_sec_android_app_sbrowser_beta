.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->initSixPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->i(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
