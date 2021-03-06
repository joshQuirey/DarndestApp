// Generated by Apple Swift version 2.1 (swiftlang-700.1.101.6 clang-700.1.76)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if defined(__has_include) && __has_include(<uchar.h>)
# include <uchar.h>
#elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
#endif

typedef struct _NSZone NSZone;

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted) 
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
#endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import CoreData;
@import CoreGraphics;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class NSManagedObjectContext;
@class Kid;
@class UIImagePickerController;
@class UITextField;
@class UIDatePicker;
@class UIButton;
@class UIImageView;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC11DarndestApp12AddEditKidVC")
@interface AddEditKidVC : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (nonatomic, readonly, strong) NSManagedObjectContext * __nullable context;
@property (nonatomic, strong) Kid * __nullable nKid;
@property (nonatomic, weak) IBOutlet UITextField * __null_unspecified name;
@property (nonatomic, weak) IBOutlet UITextField * __null_unspecified birthday;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified profilePicture;
@property (nonatomic, readonly, strong) UIImagePickerController * __nonnull picker;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)DismissKeyboard;
- (IBAction)cancelTapped:(id __nonnull)sender;
- (IBAction)saveTapped:(id __nonnull)sender;
- (void)dismissVC;
- (void)newKid;
- (void)editKid;
- (IBAction)birthdayFieldEditing:(UITextField * __nonnull)sender;
- (IBAction)birthdayFieldEditingDidBegin:(UITextField * __nonnull)sender;
- (void)datePickerValueChanged:(UIDatePicker * __nonnull)sender;
- (IBAction)takeNewPhoto:(UIButton * __nonnull)sender;
- (void)noCamera;
- (IBAction)choosePhotoFromLibrary:(UIButton * __nonnull)sender;
- (void)imagePickerController:(UIImagePickerController * __nonnull)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *, id> * __nonnull)info;
- (void)imagePickerControllerDidCancel:(UIImagePickerController * __nonnull)picker;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIWindow;
@class UIApplication;
@class NSObject;
@class NSURL;
@class NSManagedObjectModel;
@class NSPersistentStoreCoordinator;

SWIFT_CLASS("_TtC11DarndestApp11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * __nullable window;
- (BOOL)application:(UIApplication * __nonnull)application didFinishLaunchingWithOptions:(NSDictionary * __nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * __nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * __nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * __nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * __nonnull)application;
- (void)applicationWillTerminate:(UIApplication * __nonnull)application;
@property (nonatomic, strong) NSURL * __nonnull applicationDocumentsDirectory;
@property (nonatomic, strong) NSManagedObjectModel * __nonnull managedObjectModel;
@property (nonatomic, strong) NSPersistentStoreCoordinator * __nullable persistentStoreCoordinator;
@property (nonatomic, strong) NSManagedObjectContext * __nullable managedObjectContext;
- (void)saveContext;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UILabel;
@class UIView;

SWIFT_CLASS("_TtC11DarndestApp10CustomCell")
@interface CustomCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified name;
@property (nonatomic, strong) IBOutlet UILabel * __null_unspecified birthday;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified profilePicture;
@property (nonatomic, weak) IBOutlet UIView * __null_unspecified buttonView;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * __nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSDate;
@class NSData;
@class NSEntityDescription;

SWIFT_CLASS("_TtC11DarndestApp3Kid")
@interface Kid : NSManagedObject
@property (nonatomic, strong) NSDate * __nullable birthday;
@property (nonatomic, copy) NSString * __nullable name;
@property (nonatomic, strong) NSData * __nonnull picture;
- (nonnull instancetype)initWithEntity:(NSEntityDescription * __nonnull)entity insertIntoManagedObjectContext:(NSManagedObjectContext * __nullable)context OBJC_DESIGNATED_INITIALIZER;
@end

@class NSFetchedResultsController;
@class NSFetchRequest;
@class UITableView;
@class NSIndexPath;
@class UIStoryboardSegue;

SWIFT_CLASS("_TtC11DarndestApp11KidsTableVC")
@interface KidsTableVC : UITableViewController <NSFetchedResultsControllerDelegate>
@property (nonatomic, readonly, strong) NSManagedObjectContext * __nonnull context;
@property (nonatomic, strong) NSFetchedResultsController * __nonnull fetchedResultsC;
- (NSFetchedResultsController * __nonnull)getFetchedResultsController;
- (NSFetchRequest * __nonnull)kidFetchRequest;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)controllerDidChangeContent:(NSFetchedResultsController * __nonnull)controller;
- (NSInteger)numberOfSectionsInTableView:(UITableView * __nonnull)tableView;
- (NSInteger)tableView:(UITableView * __nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (CustomCell * __nonnull)tableView:(UITableView * __nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (BOOL)tableView:(UITableView * __nonnull)tableView canEditRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (CGFloat)tableView:(UITableView * __nonnull)tableView heightForRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)tableView:(UITableView * __nonnull)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath * __nonnull)indexPath;
- (void)prepareForSegue:(UIStoryboardSegue * __nonnull)segue sender:(id __nullable)sender;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC11DarndestApp6MainVC")
@interface MainVC : UIViewController <UINavigationControllerDelegate>
@property (nonatomic, readonly, strong) NSManagedObjectContext * __nullable context;
@property (nonatomic, strong) Kid * __nullable nKid;
@property (nonatomic, weak) IBOutlet UIImageView * __null_unspecified profilePicture;
@property (nonatomic, strong) NSManagedObject * __nonnull item;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * __nullable)nibNameOrNil bundle:(NSBundle * __nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * __nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
