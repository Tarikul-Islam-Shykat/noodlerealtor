import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              // Profile Header with Image and User Tag
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/avater.png',
                        width: 110,
                        height: 110,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'User',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              // User Name
              const Text(
                'Alma Lawson',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),
              // User Email
              Text(
                'alma.lawson@example.com',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),

              const SizedBox(height: 8),
              // User Address
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '6391 Elgin St. Celina, Delaware 10299',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),

              const SizedBox(height: 32),
              // Menu Items
              _buildMenuOption(
                icon: Icons.calendar_today_outlined,
                title: 'My Appointments',
                onTap: () {},
              ),

              _buildMenuOption(
                icon: Icons.edit_outlined,
                title: 'Edit Profile',
                onTap: () {},
              ),

              _buildMenuOption(
                icon: Icons.lock_outline,
                title: 'Change Password',
                onTap: () {},
              ),

              _buildMenuOption(
                icon: Icons.logout_outlined,
                title: 'Logout',
                onTap: () {},
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black87),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: CircleAvatar(
          radius: 12,
          backgroundColor: Colors.black,
          child: Icon(Icons.arrow_forward_ios, size: 12, color: Colors.white),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
    );
  }
}

/*
// Example usage:
void navigateToProfile() {
  Get.to(() => const ProfileScreen());
}
*/
